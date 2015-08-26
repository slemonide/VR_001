-- $Name: Моя первая игра$
-- $Version: 0.1$
-- $Author: Анонимный автор$
 
--instead_version "1.9.1"
 
require "para"
require "dash"
require "quotes"
 
require "dbg"
 
game.act = 'Гм...';
game.use = 'Не сработает.';
game.inv = 'Зачем это мне?';

main = room {
	nam = "Спаун";
	pic = 'gfx/spawn.png';
	enter = function()
		set_music('mus/bg.ogg')
	end;
	dsc = [[Вы в небольшой комнатке. Перед вами длинный зал с частыми
		анклавами. Слева расположена сокровищница. Сзади находтся дыра в стене.]];
	obj = {'sign'};
	way = {'hall', 'treasury','exit'};
}

sign = obj {
        nam = 'табличка';
        dsc = 'На стене висит {табличка}.';
        act = [[Надпись: "Ааа! Мы все умрем!"]];
};

treasury = room {
	nam = 'Сокровещница';
	pic = 'gfx/treasury.png';
	dsc = [[На стене висит табличка "Не входить." К чему бы это?]];
	way = {'hall','main','exit','die'};
};

exit = room {
	nam = 'Дыра';
	pic = 'gfx/hole.png';
	dsc = [[Судя по отметенам на полу, дыра была проделана чем-то наподобии кирки.]];
	way = {'hall','main','treasury'};
};

hall = room {
	nam = 'Зал';
	pic = 'gfx/hall.png';
	dsc = [[Вы в огромном зале. Все анклавы загорожены решетками.
		Это вызывает у вас уныние и тоску по прежним временам.]];
	way = {'main', 'memory'};
};

memory = room {
	nam = 'Вспоминать';
	pic = 'gfx/beginning.png';
	dsc = [[Изначальный мир представлял из себя абсолютную утопию.
		Свет лился с небес и никто не вступал в конфликты.
		А если такие и были, то всегда можно было сделать откат.]];
	way = {'memory2'};
};

memory2 = room {
	nam = 'Вспоминать';
	pic = 'gfx/beginning_end.png';
	dsc = [[Но потом что-то сломалось.]];
	way = {'hall'};
};

die =  room {
	nam = 'Войти';
--	pic = 'gfx/beginning_end.png';
	dsc = [[Кажется что-то сломалось. ВЫ УМЕРЛИ, КОНЕЦ ИГР]];
--	way = {'hall'};
};

