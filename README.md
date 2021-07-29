# Projeto de exemplo para utilização do framework Modal Customization
Esse é um projeto de exemplo desenvolvido em Objective-C, usando a arquitetura MVC para mostrar o funcionamento do framework [Modal Customization](https://github.com/ModalCustomizationFramework/ModalCustomizationFramework). 

## Estrutura do projeto

#### Diretório Configuration

- App Delegate
- Scene Delegate

#### Diretório View

- TriggerButtonView - View com um botão que será utilizado como trigger para mostrar a modal.

#### Diretório Controller

- TriggerButtonViewController - O foco do tutorial será nessa controller, na action do botão  iremos utilizar o framework para criar e customizar a modal.
- ModalViewController - Controller que configura o conteúdo da tela de modal.


Quando você executar o projeto ele não irá apresentar a próxima tela como modal, pois o framework ainda não está integrado. Siga o tutorial abaixo para fazer a integração.

1. Faça o download do [projeto de exemplo](https://github.com/ModalCustomizationFramework/Example)
2. Navegue até o arquivo nomeado **TriggerButtonViewController.h**
3. Importe o framework e adicione uma nova propriedade
~~~objective-c
#import <ModalCustomizationFramework/ModalCustomizationFramework.h>
@property (nonatomic,retain) ModalTransitioningDelegate *modalTransitioningDelegate;
~~~
4. Vamos fazer modificações na seguinte função 
~~~objective-c
 - (void)buttonAction {}
~~~
5. Instancie a classe **ModalCustomization** para ter acesso aos métodos que irão customizar a modal na primeira linha da função 
~~~objective-c
 ModalCustomization *modalCustomization = ModalCustomization.new;
~~~

6. Logo em seguida, ainda dentro da função, faça as customizações, se não usar as funções, valores padrões serão colocados. 
~~~objective-c
    // Escolher entre lightMode e darkMode / valor padrão: lightMode
    [modalCustomization setModalBlurEffectStyle:darkMode];
    
    // Escolher entre ModalScaleStateShort(menos que metade da tela), ModalScaleStateNormal(metade da tela), ModalScaleStateAdjustedOnce(tela inteira) / valor padrão : ModalScaleStateNormal
    [modalCustomization setModalScaleState:ModalScaleStateShort];
    
    // Definir se a modal expande quando o usuário arrasta para cima ou se permanece com a mesma altura / valor padrão : NO
    [modalCustomization setIsModalExpansive:YES];
~~~
7. Instancie a classe ModalTransitioningDelegate atribuindo o objeto retornado para o **modalTransitioningDelegate** da controller, que corresponde a propriedade criada no passo 3.
~~~objective-c
    self.modalTransitioningDelegate = [[ModalTransitioningDelegate alloc] initWithViewController:self
                                                                          presentingViewController: navigationController];
~~~

8. A ViewController da modal que será apresentada está contida em uma Navigation Controller, então por meio dela vamos colocar o modo de 
   apresentação da modal para custom. O transitioning delegate será responsável por instanciar a view que será apresentada por meio de uma
   Presentation Controller.
   
~~~objective-c
    navigationController.modalPresentationStyle = UIModalPresentationCustom;
    navigationController.transitioningDelegate = self.modalTransitioningDelegate;
~~~

    

## Preview do projeto sem integração com o framework

https://user-images.githubusercontent.com/52433246/127242049-527ad72c-13f1-49d3-8782-587c424a510f.mp4

## Preview do projeto com integração com o framework





