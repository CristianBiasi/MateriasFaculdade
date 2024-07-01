import java.util.List;
import java.util.Scanner;

import DAO.EmprestimoDAO;
import DAO.LivroDAO;
import DAO.UsuarioDAO;
import model.Livro;
import model.Usuario;

public class MainApp {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        LivroDAO livroDAO = new LivroDAO();
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        EmprestimoDAO emprestimoDAO = new EmprestimoDAO();

        // Menu para interação com o usuário
        int opcao;
        do {
            System.out.println("\n=== Menu ===");
            System.out.println("1. Listar Livros");
            System.out.println("2. Listar Usuários");
            System.out.println("3. Adicionar Livro");
            System.out.println("4. Adicionar Usuário");
            System.out.println("5. Realizar Empréstimo");
            System.out.println("6. Realizar Devolução");
            System.out.println("0. Sair");
            System.out.print("Escolha uma opção: ");
            opcao = scanner.nextInt();
            scanner.nextLine(); // Limpar o buffer do scanner

            switch (opcao) {
                case 1:
                    // Listar livros
                    listarLivros(livroDAO);
                    break;
                case 2:
                    // Listar usuários
                    listarUsuarios(usuarioDAO);
                    break;
                case 3:
                    // Adicionar livro
                    adicionarLivro(scanner, livroDAO);
                    break;
                case 4:
                    // Adicionar usuário
                    adicionarUsuario(scanner, usuarioDAO);
                    break;
                case 5:
                    // Realizar empréstimo
                    realizarEmprestimo(scanner, emprestimoDAO);
                    break;
                case 6:
                    // Realizar devolução
                    realizarDevolucao(scanner, emprestimoDAO);
                    break;
                case 0:
                    System.out.println("Saindo...");
                    break;
                default:
                    System.out.println("Opção inválida.");
                    break;
            }

        } while (opcao != 0);

        scanner.close();
    }

    // Método para listar todos os livros
    private static void listarLivros(LivroDAO livroDAO) {
        List<Livro> livros = livroDAO.listarLivros();
        System.out.println("\n=== Lista de Livros ===");
        for (Livro livro : livros) {
            System.out.println(livro);
        }
    }

    // Método para listar todos os usuários
    private static void listarUsuarios(UsuarioDAO usuarioDAO) {
        List<Usuario> usuarios = usuarioDAO.listarUsuarios();
        System.out.println("\n=== Lista de Usuários ===");
        for (Usuario usuario : usuarios) {
            System.out.println(usuario);
        }
    }

    // Método para adicionar um novo livro
    private static void adicionarLivro(Scanner scanner, LivroDAO livroDAO) {
        System.out.println("\n=== Adicionar Livro ===");
        System.out.print("Título do livro: ");
        String titulo = scanner.nextLine();
        System.out.print("Autor do livro: ");
        String autor = scanner.nextLine();
        System.out.print("Ano de publicação do livro: ");
        String ano = scanner.nextLine();

        Livro novoLivro = new Livro(0, titulo, autor, ano);

        livroDAO.inserirLivro(novoLivro);
        System.out.println("Livro adicionado com sucesso.");
    }

    // Método para adicionar um novo usuário
    private static void adicionarUsuario(Scanner scanner, UsuarioDAO usuarioDAO) {
        System.out.println("\n=== Adicionar Usuário ===");
        System.out.print("Nome do usuário: ");
        String nome = scanner.nextLine();
        System.out.print("Email do usuário: ");
        String email = scanner.nextLine();

        Usuario novoUsuario = new Usuario(0, nome, email);
        usuarioDAO.inserirUsuario(novoUsuario);
        System.out.println("Usuário adicionado com sucesso.");
    }

    // Método para realizar um empréstimo
    private static void realizarEmprestimo(Scanner scanner, EmprestimoDAO emprestimoDAO) {
        System.out.println("\n=== Realizar Empréstimo ===");
        int idLivro = lerIdLivro(scanner);
        int idUsuario = lerIdUsuario(scanner);

        emprestimoDAO.realizarEmprestimo(idLivro, idUsuario);
    }

    // Método para realizar uma devolução
    private static void realizarDevolucao(Scanner scanner, EmprestimoDAO emprestimoDAO) {
        System.out.println("\n=== Realizar Devolução ===");
        int idEmprestimo = EmprestimoDAO.lerIdEmprestimo(scanner);
        emprestimoDAO.realizarDevolucao(idEmprestimo);
    }

    // Método auxiliar para ler ID de Livro
    private static int lerIdLivro(Scanner scanner) {
        System.out.print("Digite o ID do livro: ");
        return scanner.nextInt();
    }

    // Método auxiliar para ler ID de Usuário
    private static int lerIdUsuario(Scanner scanner) {
        System.out.print("Digite o ID do usuário: ");
        return scanner.nextInt();
    }
}
