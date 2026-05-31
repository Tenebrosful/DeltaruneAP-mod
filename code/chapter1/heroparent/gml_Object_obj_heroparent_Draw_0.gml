/// PATCH

/// APPEND
if (poisonamount > 0)
{
    poisontimer++;
    
    if (poisontimer >= 10)
    {
        if (global.hp[global.char[myself]] > 1)
        {
            global.hp[global.char[myself]]--;
            poisonamount--;
        }
        else
        {
            poisonamount = 0;
        }
        
        poisontimer = 0;
    }
}
/// END