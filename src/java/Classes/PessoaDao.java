package Classes;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PessoaDao extends Dao {
    public void incluirPessoa(Pessoa p) throws Exception {
        open();
        stmt = con.prepareStatement("INSERT INTO pessoa (name, email) values(?,?)");
        // stmt.setInt(1, p.getIdPessoa());
        stmt.setString(1, p.getNomePessoa());
        stmt.setString(2, p.getEmail());
        stmt.execute();
        stmt.close();
        close();
	}
    
public boolean addPerson(Pessoa p) throws Exception {
    try{
        open();
        stmt = con.prepareStatement("INSERT INTO pessoa (name, email) values(?,?)");
        // stmt.setInt(1, p.getIdPessoa());
        stmt.setString(1, p.getNomePessoa());
        stmt.setString(2, p.getEmail());
        stmt.execute();

    } catch (SQLException ex) {
        System.out.println("Error: " + ex.getMessage() );
        return false;
    } finally {
        stmt.close();
        close();
    }
    return true;
}

public void alterarPessoa(Pessoa p) throws Exception {
    open();
    stmt = con.prepareStatement("UPDATE pessoa SET name = ?, email = ? WHERE id = ?");
    stmt.setString(1, p.getNomePessoa());
    stmt.setString(2, p.getEmail());
    stmt.setInt(3, p.getIdPessoa());
    stmt.execute();
    stmt.close();
    close();
}

public void excluirPessoa(Pessoa p) throws Exception {

    open();
    stmt = con.prepareStatement("DELETE FROM pessoa WHERE id = ?");
    stmt.setInt(1, p.getIdPessoa());
    stmt.execute();
    stmt.close();
    close();

}

public boolean deletePerson(Pessoa p) throws Exception {
    try{
        open();
        stmt = con.prepareStatement("DELETE FROM pessoa WHERE id = ?");
        stmt.setInt(1, p.getIdPessoa());
        stmt.execute();

    } catch (SQLException ex) {
        System.out.println("Error: " + ex.getMessage() );
        return false;
    } finally {
        stmt.close();
        close();
    }
    return true;
}

    // retornando um objeto
public Pessoa consultarPessoaIndividual(int cod) throws Exception {
    open();
    stmt = con.prepareStatement("SELECT * FROM pessoa WHERE id = ? ");
    stmt.setInt(1, cod);
    try {
            rs = stmt.executeQuery();			
    }
    catch (SQLException ex) {
            throw new Exception(ex);
//		        System.out.println("Falha ao recuperar o registro. Contate TI");
    }
    finally {
            System.out.println("Fechando a conexão com banco de dados no Finally");
            close();
    }
    Pessoa p = null;
    if (rs != null) {
            if (rs.next()) {
                    p = new Pessoa();
                    p.setIdPessoa(rs.getInt("id"));
                    p.setNomePessoa(rs.getString("name"));
                    p.setEmail(rs.getString("email"));				
            }
    }
    rs.close();
    stmt.close();
    close();
    return p;
}
public List <Pessoa> findPerson() throws Exception {
    try {
    open();
    stmt = con.prepareStatement("SELECT * FROM pessoa");
    rs = stmt.executeQuery();
    List<Pessoa> listaCadastros = new ArrayList<> ();
    while (rs.next()){
        Pessoa p = new Pessoa();
        p.setIdPessoa(rs.getInt("id"));
        p.setNomePessoa(rs.getString("name"));
        p.setEmail(rs.getString("email"));
        listaCadastros.add(p);
    }
    return listaCadastros;
    } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
    } finally {
        rs.close();
        stmt.close();
        close();
        stmt.close();
        close();
    }
}

public List<Pessoa> ListarPessoas() {
    try {
        open();
        stmt = con.prepareStatement("SELECT * FROM pessoa");
        rs = stmt.executeQuery();
        List<Pessoa> listaPessoas = new ArrayList<>();
        while (rs.next()) {
            Pessoa p = new Pessoa();
            p.setIdPessoa(rs.getInt("id"));
            p.setNomePessoa(rs.getString("name"));
            p.setEmail(rs.getString("email"));
            listaPessoas.add(p);
        }
        rs.close();
        stmt.close();
        close();
        return listaPessoas;

        } catch (Exception e) {
                System.out.println(e.getMessage());
                return null;
        }
}
}