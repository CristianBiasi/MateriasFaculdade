import java.util.LinkedList;
import java.util.Collections;

public class GerenciamentoUsuarios {
    private LinkedList<Usuario> usuarios;

    public GerenciamentoUsuarios() {
        usuarios = new LinkedList<>();
    }

    public void inserir(Usuario usuario) {
        if (usuarios.contains(usuario)) {
            System.out.println("Usuário " + usuario + " duplicado");
        } else {
            usuarios.add(usuario);
        }
    }

    public Usuario buscar(int id) {
        for (Usuario usuario : usuarios) {
            if (usuario.getId() == id) {
                return usuario;
            }
        }
        return null;
    }

    public void remover(int id) {
        Usuario usuario = buscar(id);
        if (usuario != null) {
            usuarios.remove(usuario);
            System.out.println("Usuário " + usuario + " removido");
        } else {
            System.out.println("Usuário com id " + id + " não encontrado");
        }
    }

    public void listarTodos() {
        Collections.sort(usuarios, (u1, u2) -> Integer.compare(u1.getId(), u2.getId()));
        for (Usuario usuario : usuarios) {
            System.out.println(usuario);
        }
    }
}
