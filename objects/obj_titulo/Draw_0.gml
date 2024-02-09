/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_self();

// Defina a cor amarela
draw_set_color(c_white);

draw_set_font(fnt_titulo);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

var texto = "Seek out the ";
var texto2 = "Flames";

// Desenhe a primeira parte do texto em amarelo
draw_text(x, y, texto);

// Defina a cor vermelha
draw_set_color(c_red); // Ou a cor que você deseja para "Flames"

// Desenhe a segunda parte do texto em vermelho
var texto2_width = string_width(texto2);
var texto2_height = string_height(texto);
draw_text_ext(x + string_width(texto) -80, y - texto2_height+108 / 2, texto2, texto2_width, texto2_height);

// Restaure a cor padrão (normalmente branco) após o desenho
draw_set_color(c_white);


