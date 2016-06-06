//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()

@property (nonatomic, strong) NSMutableArray *board;

@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        
        [self resetBoard];
        
        
        

    }

    return self;
}

-(void)resetBoard {

    NSArray * tictac = @[ [@[ @"", @"", @"" ] mutableCopy]  ,
                         [@[ @"", @"", @"" ] mutableCopy]  ,
                         [@[ @"", @"", @"" ] mutableCopy] ];
    
    self.board = [tictac mutableCopy];
    
    NSLog (@"%@", self.board);
    
    
    
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    
   NSString *playerAtColumn = self.board[row][column];
    
   return playerAtColumn;
    
   //return @"";
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    
    if ([self.board[row][column] isEqualToString: @""]){
        
        return YES;}
   
    return NO;
}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column]=@"X";

}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{

    self.board[row][column]=@"O";
    
}

-(NSString *)winningPlayer
{

    if ([self.board [0][0] isEqualToString: self.board[0][1]] && [self.board[0][0] isEqualToString:self.board [0][2]]) {
              return self.board [0][0];}
    
    
       if ([self.board [1][0] isEqualToString: self.board[1][1]] && [self.board[1][0] isEqualToString:self.board [1][2]]) {
               return self.board [1][0];}
   
      if ([self.board [2][0] isEqualToString: self.board[2][1]] && [self.board[2][0] isEqualToString:self.board [2][2]]) {
               return self.board [2][0];}
    
           if ([self.board [0][0] isEqualToString: self.board[1][0]] && [self.board[0][0] isEqualToString:self.board [2][0]]) {
                return self.board [0][0];}
    
            if ([self.board [0][1] isEqualToString: self.board[1][1]] && [self.board[0][1] isEqualToString:self.board [2][1]]) {
                   return self.board [0][1];}
    
           if ([self.board [0][2] isEqualToString: self.board[1][2]] && [self.board[0][2] isEqualToString:self.board [2][2]]) {
                        return self.board [0][2];
               }
    
   
           if ([self.board [0][0] isEqualToString: self.board[1][1]] && [self.board[0][0] isEqualToString:self.board [2][2]]) {
                       return self.board [0][0];
              }
    
            if ([self.board [0][2] isEqualToString: self.board[1][1]] && [self.board[0][2] isEqualToString:self.board [2][0]]) {
                       return self.board [0][2];
        
            }
    
    
    
    return @"";
}

-(BOOL)isADraw
{
    { BOOL isFullBoard = YES;
         for (NSUInteger row = 0; row < [self.board count]; row++) {
                for (NSUInteger column = 0; column < [self.board[row]count]; column++) {
                           if ([self.board [row][column] isEqualToString:@""]){
                                   isFullBoard = NO;
                                }
                        }
                }
    
           return isFullBoard;
    

    }

   return NO;
}

@end
