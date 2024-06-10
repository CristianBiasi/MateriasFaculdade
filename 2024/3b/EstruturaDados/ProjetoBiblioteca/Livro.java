public class Livro {
    // Atributos
    private int id;
    private String titulo;
    private String autor;
    private int anoPublicacao;
    private static int contador = 0;

    // Construtor
    public Livro(String titulo, String autor, int anoPublicacao) {
        this.titulo = titulo.toUpperCase();
        this.autor = autor;
        this.anoPublicacao = anoPublicacao;
        this.id = ++contador;
    }

    // Getters e Setters
    public int getId() {
        return id;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getAnoPublicacao() {
        return anoPublicacao;
    }

    @Override
    public String toString() {
        return "Livro [id=" + id + ", titulo=" + titulo + ", autor=" + autor + ", anoPublicacao=" + anoPublicacao + "]";
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Livro livro = (Livro) obj;
        return id == livro.id;
    }

    @Override
    public int hashCode() {
        return Integer.hashCode(id);
    }
}
