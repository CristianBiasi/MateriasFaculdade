public class Usuario {
    private int id;
    private String nome;
    private String email;
    private static int contador = 0;

    public Usuario(String nome, String email) {
        this.nome = nome;
        this.email = email;
        this.id = ++contador;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }

    @Override
    public String toString() {
        return "Usuario [id=" + id + ", nome=" + nome + ", email=" + email + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Usuario usuario = (Usuario) obj;
        return id == usuario.id;
    }

    @Override
    public int hashCode() {
        return Integer.hashCode(id);
    }
}
