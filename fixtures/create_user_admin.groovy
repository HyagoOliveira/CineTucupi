import com.cadastro.Sexo
import com.cadastro.Usuario
import com.security.Role
import com.security.User
import com.security.UserRole

/**
 * Created by hyago on 22/10/15.
 */


fixture{
    admRole (Role, authority: "ROLE_ADMINISTRADOR")
    userRole(Role, authority: "ROLE_USUARIO")
    println("ROLES CRIADOS COM SUCESSO...")

    userAdmin(User, username: 'suporte.tucupi', password: '@caicomtapioc@', enabled: true, accountExpired: false, accountLocked: false, passwordExpired: false)

    usuarioAdmin(Usuario, springUser: userAdmin, email: 'suportecinetucupi@gmail.com', nome: 'Suporte Cine Tucupi', dataNascimento: new Date(), sexo: Sexo.MASCULINO)
    println("USUARIO ADM CRIADO COM SUCESSO...")

    userRole(UserRole, user: userAdmin, role: admRole)
    println("USUARIO ADMINISTRADOR COMPLETADO...")
}