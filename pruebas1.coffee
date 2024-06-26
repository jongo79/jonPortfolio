<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Integrated Web Terminal</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery.terminal/js/jquery.terminal.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/jquery.terminal/css/jquery.terminal.min.css"/>

    <style>
        /* Specify a monospaced font for the ASCII art */
        #welcome-art {
            font-family: monospace;
            white-space: pre;
            font-size: 9px;
            color: white; /* Specify the color here */
            background-color: black;
        }
    </style>
</head>
<body>
    <div id="welcome-art">
     
.../\\\\\\\\\\\........................                                                                                                                                                                                                                
...\/////\\\///.........................                                                                                                                                                                                                              
 .......\/\\\............................                                                                                                                                                                                                              
  .......\/\\\....../\\\\\...../\\/\\\\\\.                                                                                                                                                                                                             
   .......\/\\\..../\\\///\\\..\/\\\////\\\                                                                                                                                                                                                            
    .......\/\\\.../\\\  \//\\\.\/\\\..\//\\\                                                                                                                                                                                                          
     /\\\...\/\\\..\//\\\  /\\\..\/\\\...\/\\\                                                                                                                                                                                                          
     \//\\\\\\\\\....\///\\\\\/...\/\\\...\/\\\                                                                                                                                                                                                         
       \/////////.......\/////.....\///....\///                                                                                                                                                                                                  
 /\\\\\\\\\\\\............................................................/\\\\\\................................____________/\\\\\\\\\\\\\____________________________________________________/\\\\\________________/\\\\\\______________________        
/\\\//////////............................................................\////\\\................................___________\/\\\/////////\\\________________________________________________/\\\///________________\////\\\______________________      
\/\\\.........................................................................\/\\\................................___________\/\\\_______\/\\\_________________________________/\\\__________/\\\_______________________\/\\\_____/\\\_____________      
 \/\\\..../\\\\\\\...../\\\\\...../\\/\\\\\\..../\\\\\\\\\\\../\\\\\\\\\.......\/\\\......../\\\\\\\\.../\\\\\\\\\\\___________\/\\\\\\\\\\\\\/______/\\\\\_____/\\/\\\\\\\___/\\\\\\\\\\\__/\\\\\\\\\_______/\\\\\_______\/\\\____\///______/\\\\\__     
  \/\\\...\/////\\\.../\\\///\\\..\/\\\////\\\..\///////\\\/..\////////\\\......\/\\\....../\\\/////\\\ \///////\\\/.___________\/\\\/////////______/\\\///\\\__\/\\\/////\\\_\////\\\////__\////\\\//______/\\\///\\\_____\/\\\_____/\\\___/\\\///\\\    
   \/\\\.......\/\\\ ./\\\  \//\\\.\/\\\..\//\\\....../\\\/....../\\\\\\\\\\.....\/\\\...../\\\\\\\\\\\......./\\\/...___________\/\\\______________/\\\__\//\\\_\/\\\___\///_____\/\\\_________\/\\\_______/\\\__\//\\\____\/\\\____\/\\\__/\\\__\//\\\   
    \/\\\.......\/\\\.\//\\\  /\\\..\/\\\...\/\\\..../\\\/......./\\\/////\\\.....\/\\\....\//\\///////....../\\\/.....___________\/\\\_____________\//\\\__/\\\__\/\\\____________\/\\\_/\\_____\/\\\______\//\\\__/\\\_____\/\\\____\/\\\_\//\\\__/\\\  
     \//\\\\\\\\\\\\/...\///\\\\\/...\/\\\..../\\\../\\\\\\\\\\\.\//\\\\\\\\/\\../\\\\\\\\\..\//\\\\\\\\\\../\\\\\\\\\\\___________\/\\\______________\///\\\\\/___\/\\\____________\//\\\\\______\/\\\_______\///\\\\\/____/\\\\\\\\\_\/\\\__\///\\\\\/_ 
       \////////////.......\/////.....\///....\///..\///////////...\////////\//..\/////////....\//////////..\///////////____________\///_________________\/////_____\///______________\/////_______\///__________\/////_____\/////////__\///_____\/////___
/\\\\\\\\\\\\\\\  /\\\\\\............................................................................................_____________________/\\\________________________/\\\\\\\\\________/\\\________/\\\___________________________________________________                                             
\/\\\///////////  \////\\\............................................................................................___________________/\\\//\\\__________________/\\\////////________\/\\\_______\/\\\___________________________________________________                                           
 \/\\\................\/\\\................................./\\\................../\\\.................................__________________/\\\_/\\\__________________/\\\/_________________\//\\\______/\\\___________________________________________________                                           
  \/\\\\\\\\\\\........\/\\\......../\\\\\...../\\/\\\\\\\..\///.../\\\\\\\\\\../\\\\\\\\\\\../\\\\\\\\\...../\\/\\\\\\._________________\//\\\\//__________________/\\\____________________\//\\\____/\\\____________________________________________________                                          
   \/\\\///////.........\/\\\....../\\\///\\\..\/\\\/////\\\../\\\.\/\\\//////..\////\\\////..\////////\\\...\/\\\////\\\________________/\\\///\\\_________________\/\\\_____________________\//\\\__/\\\_____________________________________________________                                         
    \/\\\................\/\\\...../\\\..\//\\\.\/\\\...\///..\/\\\.\/\\\\\\\\\\....\/\\\......../\\\\\\\\\\..\/\\\..\//\\\_____________/\\\/__\///\\\/\\\___________\//\\\_____________________\//\\\/\\\______________________________________________________                                        
     \/\\\................\/\\\....\//\\\../\\\..\/\\\.........\/\\\.\////////\\\....\/\\\_/\\.../\\\/////\\\..\/\\\...\/\\\____________/\\\______\//\\\//_____________\///\\\____________________\//\\\\\_______________________________________________________                                       
      \/\\\............../\\\\\\\\\..\///\\\\\/...\/\\\.........\/\\\../\\\\\\\\\\....\//\\\\\...\//\\\\\\\\/\\.\/\\\...\/\\\___________\//\\\\\\\\\\\//\\\_______________\////\\\\\\\\\__/\\\______\//\\\________/\\\____________________________________________                                      
       \///..............\/////////.....\/////.....\///..........\///..\//////////.....\/////.....\////////\//...\///....\//______________\///////////_\///___________________\/////////__\///________\///________\///_____________________________________________                                     

    </div>
    <script>
        // Initialize a variable to store the last command
        var lastCommand = '';

        $(document).ready(function() {
            // Define an object to store project URLs
            var projects = {
                "hangmanJS": 'https://jongo79.github.io/ahorcado/',
                "hangmanReact": 'https://hangman-kappa-liart.vercel.app/',
                "Simon": 'https://simon-game-nine-livid.vercel.app/',
                "PortfolioCV": 'https://jongo79.github.io/jonPortfolio/',
                // Add more projects as needed
            };

            // Initialize terminal with greetings and commands
            $('body').terminal({
                CV: function() {
                    pdfCV = 'https://www.canva.com/design/DAGCe5rd3e0/C2p4VnYsl1ib8cgzJfBoWA/view?utm_content=DAGCe5rd3e0&utm_campaign=designshare&utm_medium=link&utm_source=editor';
                    window.open(pdfCV, '_blank');
                },
                foto: function(size) {
                    size = size || '200'; // Set a default size if no size argument is provided
                    const cacheBuster = Math.random().toString(36).substring(7); // Example of generating a random string
                    const imageUrl = 'https://picsum.photos/' + size + '?cache=' + cacheBuster; // Construct the image URL with the specified size and cache-busting parameter
                    const img = $('<img src="' + imageUrl + '">'); // Create the image element
                    this.echo(img); // Append the image element to the output
                },
                list: function() {
                    var output = 'Available projects:\n';
                    for (var project in projects) {
                        output += '- ' + project + '\n';
                    }
                    this.echo(output);
                },
                open: function(projectName) {
                    var projectURL = projects[projectName];
                    if (projectURL) {
                        window.open(projectURL, '_blank');
                        this.echo('Opening ' + projectName + '...');
                    } else {
                        this.error('Project not found.');
                    }
                },
                help: function() {
                    var output = 'Arrow up for command history\nAvailable commands:\n';
                    output += '- foto [size]: Displays a random image with the specified width or height.\n';
                    output += '- list: Lists content.\n';
                    output += '- open [content]: Opens content in a new tab.\n';
                    output += '- help: Displays this help message.\n';
                    output += '- CV: Displays curriculum vitae.\n';
                    this.echo(output);
                },
                arrowUp: function() {
                    // Check if there is a last command stored
                    if (lastCommand !== '') {
                        // Call the terminal with the last command
                        this.exec(lastCommand);
                    } else {
                        // If there is no last command, display a message
                        this.echo('No previous command available');
                    }
                },
            }, {
                greetings: '\n\nWelcome to the Integrated Web Terminal\nType "help" to see some magic!',
                prompt: '> ',
                // Set the onCommandChange handler to update the lastCommand variable
                onCommandChange: function(command) {
                    lastCommand = command;
                }
            });

            // Add keydown event listeners to the terminal element
            $('body').keydown(function(event) {
                // Check if the pressed key is ArrowUp (key code 38) or ArrowDown (key code 40)
                if (event.which === 38 || event.which === 40) {
                    // Prevent the default behavior to avoid scrolling
                    event.preventDefault();
                }
            });
        });
    </script>
</body>
</html>
