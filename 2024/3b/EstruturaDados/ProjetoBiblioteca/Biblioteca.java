import java.util.LinkedList;
import java.util.List;
import java.util.Collections;

public class Biblioteca {
    private LinkedList<Livro> dados;

    public Biblioteca() {
        dados = new LinkedList<>();
    }

    public void inserir(Livro livro) {
        if (dados.contains(livro)) {
            System.out.println("Livro " + livro + " duplicado");
        } else {
            dados.add(livro);
        }
    }

    public Livro buscar(int id) {
        for (Livro livro : dados) {
            if (livro.getId() == id) {
                return livro;
            }
        }
        return null;
    }

    public void remover(int id) {
        Livro livro = buscar(id);
        if (livro != null) {
            dados.remove(livro);
            System.out.println("Livro " + livro + " removido");
        } else {
            System.out.println("Livro com id " + id + " não encontrado");
        }
    }

    public void listarTodos() {
        Collections.sort(dados, (l1, l2) -> Integer.compare(l1.getId(), l2.getId()));
        for (Livro livro : dados) {
            System.out.println(livro);
        }
    }
}
