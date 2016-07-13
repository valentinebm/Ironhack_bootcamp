$(function () {
  var Controller = function (container) {
    this.buttons = [];
    this.container = container;
    this.activationClass = 'js-activate';
  }

  Controller.prototype.populateButtons = function () {
    for (var i = 0; i < 10; i++) {
      var buttonItem = new ButtonItem(i, this.activationClass);
      this.buttons.push(buttonItem);
    }
  }

  Controller.prototype.renderButton = function (buttonItem) {
    var buttonEl = buttonItem.render();
    this.container.append(buttonEl);
  }

  Controller.prototype.renderButtons = function () {
    this.container.empty();
    this.buttons.forEach(this.renderButton.bind(this));
  }

  var ButtonItem = function (number, activationClass) {
    this.number = number;
    this.el = $('<div>');
    this.activationClass = activationClass;
    this.className = 'my-button';
  }

  ButtonItem.prototype.onClick = function (e) {
    console.log('Button number ' + this.number + ' was clicked');
  }

  ButtonItem.prototype.render = function () {
    this.el.empty();
    var button = $('<button>')
                    .text('click #' + this.number)
                    .addClass(this.className)
                    .addClass(this.activationClass);
    this.el.append(button);
    this.setListener();
    return this.el;
  }

  ButtonItem.prototype.setListener = function () {
    console.log('in da setListener');
    this.el.off('click');
    this.el.on('click', this.onClick.bind(this))
  }
  
  var container = $('.container');
  controller = new Controller(container);
  controller.populateButtons();
  controller.renderButtons();
  controller.renderButtons();
})
