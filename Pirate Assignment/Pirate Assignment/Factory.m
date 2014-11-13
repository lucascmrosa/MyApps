//
//  Factory.m
//  Pirate Assignment
//
//  Created by Dinf AEB on 31/10/14.
//  Copyright (c) 2014 Dinf AEB. All rights reserved.
//

#import "Factory.h"

@implementation Factory

-(NSArray *)tiles;
{
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Capitão, precisamos de um lider como você para essa aventura! Deseja uma Espada Curta?";
    tile1.backgroundImage = [UIImage imageNamed:@"espadaCurta.jpg"];
    tile1.actionButtonName = @"Pegar Espada";
    Weapon *bluntedSword = [[Weapon alloc]init];
    bluntedSword.name = @"Espada Curta";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"Você chegou a loja de armaduras, deseja uma Chain Mail?";
    tile2.backgroundImage = [UIImage imageNamed:@"chainMail.jpg"];
    tile2.actionButtonName = @"Pegar Chain Mail";
    Armor *chainMail = [[Armor alloc]init];
    chainMail.name = @"Chain Mail";
    chainMail.health = 8;
    tile2.armor = chainMail;
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"Encontramos um grupo de pessoas, devemos perguntar por informações?";
    tile3.backgroundImage = [UIImage imageNamed:@"pirateDock.jpg"];
    tile3.actionButtonName = @"Perguntar";
    tile3.healthEffect = 12;

    
    NSMutableArray *primeiraColuna = [[NSMutableArray alloc] init];
    [primeiraColuna addObject:tile1];
    [primeiraColuna addObject:tile2];
    [primeiraColuna addObject:tile3];
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"Você encontrou uma papagaio, deseja usar como seu animal de estimação? ele ajuda na sua defesa.";
    tile4.backgroundImage = [UIImage imageNamed:@"pirateParrot.jpg"];
    Armor *parrot = [[Armor alloc]init];
    parrot.health = 20;
    parrot.name = @"Papagaio";
    tile4.actionButtonName = @"pegar papagaio";
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Encontramos uma pistola.";
    tile5.backgroundImage = [UIImage imageNamed:@"piratePistol.jpg"];
    Weapon *pistol = [[Weapon alloc]init];
    pistol.name  = @"Pistola";
    pistol.damage = 17;
    tile5.actionButtonName = @"pegar pistola";
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"Você foi capturado, deseja ser corajoso ou fugir?";
    tile6.backgroundImage = [UIImage imageNamed:@"piratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName  =   @"não demonstre medo";
    
    NSMutableArray *segundaColuna = [[NSMutableArray alloc] init];
    [segundaColuna addObject:tile4];
    [segundaColuna addObject:tile5];
    [segundaColuna addObject:tile6];
    
    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"Você encontrou um grupo de piratas.";
    tile7.backgroundImage = [UIImage imageNamed:@"shipBattle.jpg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName  =   @"lute com eles";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"UM KRAKEN!";
    tile8.backgroundImage = [UIImage imageNamed:@"kraken.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName  =   @"abadonar navio";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"Encontrou um tesouro.";
    tile9.backgroundImage = [UIImage imageNamed:@"chest.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName  =   @"pegar tesouro";
    
    NSMutableArray *terceiraColuna = [[NSMutableArray alloc] init];
    [terceiraColuna addObject:tile7];
    [terceiraColuna addObject:tile8];
    [terceiraColuna addObject:tile9];
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"Um grupo de piratas invadiu o navio.";
    tile10.backgroundImage = [UIImage imageNamed:@"attack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"lutar!";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"Encontramos algo no fundo do mar.";
    tile11.backgroundImage = [UIImage imageNamed:@"chestSea.jpg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"mergulhar fundo";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Encontramos o chefão! está preparado?";
    tile12.backgroundImage = [UIImage imageNamed:@"boss.jpg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"lutar";
    
    NSMutableArray *quartaColuna = [[NSMutableArray alloc] init];
    [quartaColuna addObject:tile10];
    [quartaColuna addObject:tile11];
    [quartaColuna addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:primeiraColuna, segundaColuna, terceiraColuna, quartaColuna, nil];
    
    
    return tiles;
    
}

-(Character *)character
{
    Character *character = [[Character alloc] init];
    character.health = 100;
    
    Armor *armor = [[Armor alloc]init];
    armor.name = @"Camisa";
    armor.health =  5;
    character.armor = armor;
    
    Weapon *weapon = [[Weapon alloc]init];
    weapon.name = @"Mão";
    weapon.damage = 10;
    character.weapon = weapon;
    
    return character;
}

-(Boss *)boss
{
    Boss *boss = [[Boss alloc]init];
    boss.health = 65;
    return boss;
}

@end
