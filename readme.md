# SSH Config 

### Motivação

 - Criei esse repositório para ajudar varios devs q vez por outra tem q trocar de ambiente ou de maquina e ainda não se acostumaram a usar uma chave ssh para tudo no mac/linux

### Dicas

 - Bom a estrutura aqui serve para lhe dar uma melhor visão, recomendo que crie um repositorio com esses arquivos e suas chaves dentro ( FAÇA ELE PRIVADO ), para facilitar a migração de ambiente
 - Nunca compartilhe sua chave privada com ninguém, ela deve ficar apenas nas suas maquinas e no seu repositorio PRIVADO no github e/ou gitlab

### Utilização

 - Primeiro crie sua chave ssh

 ```bash
    ssh-keygen
 ```

 - o resultado deve ser como abaixo, duvida? [Clique aqui para ver um video](#)

 ![CREATE-SSH-PAIR-KEY](https://github.com/faustobdls/.ssh_public/blob/master/images/create-ssh-pair-key.png?raw=true)

 - uma vez criada copie os arquivos desse repositório para a mesma pasta a .ssh(linux e macos)
    - config: serve para preparar seu usuario na sua maquina pra usar configurações especificas para provedores especificos
    - `enable-ssh.sh`: fast install, vai servir para fazer uma instalação das chaves do keychain(chaveiro) do sistema e dar a elas as permissoes certas
 - sua estrutura de pastas e/ou arquivos deve estar assim

 ![FOLDER_STRUCT](https://github.com/faustobdls/.ssh_public/blob/master/images/folder-struct.png?raw=true)

 - temos mais 3 arquivos lá dentro
    - sua chave publica e privada
    - e seu arquivo de hosts conhecidos gerenciados pelo sistema

 - tudo pronto agora é só iniciar um repositorio privado no seu provedor de git favorito e inicializar sua .ssh como um repositorio
 ```bash
    # Só lembrando que essas instruções estão geralmente no repositório vazio no provedor assim que criado
    git init
    git add .
    git commit -m "First Commit"
    git branch -M main
    git remote add origin git@github.com:faustobdls/.ssh_public.git 
    git push -u origin main
 ```
 - lembrando que a ultima linha voce vai trocar pelo seu repositorio, o push vai ser por ssh e não vai mais pedir senha


### Contribuições

 - para usuários de outros provedores de git que quiserem contribuir, só mandar o PR que vai ser revisado e aceito