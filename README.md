# EfcMenuOpApp
Componente para utilizar como opción en un menú de opciones. 

## Descripción

**Este proyecto contiene un componente que se puede utilizar como opción.**

## Componente

Este es el componente. Su init es parametrizable.

```Swift

struct OptionViewColor: View {
    
    typealias ActionHandler = () -> Void

    let colorBase: Color
    let colorBackGround: Color
    let icon: String
    let titleOption: String
    let handler: ActionHandler
    
    init(colorBase: Color = .yellow,
         colorBackGround: Color = .blue,
         titleOption: String = "Documentos",
         icon: String = "folder",
         handler: @escaping OptionViewColor.ActionHandler) {
        
        self.colorBase = colorBase
        self.colorBackGround = colorBackGround
        self.titleOption = titleOption
        self.icon = icon
        self.handler = handler
    }


```

![Pantalla componente](/opcion.png)

## Aplicación en un menú

Esta es la pantalla que muestra el uso del componente.

![Pantalla Menú principal](/pantallaprincipal.png)
