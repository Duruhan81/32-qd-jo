import discord
from discord.ext import commands
import random

intents = discord.Intents.default()
intents.message_content = True

bot = commands.Bot(command_prefix='$', intents=intents)

@bot.event
async def on_ready():
    print(f'{bot.user} RONALDO > PESSİ')

@bot.command()
async def hello(ctx):
    await ctx.send(f'Merhaba! Ben {bot.user}, bir Discord sohbet botuyum!')

@bot.command()
async def heh(ctx, count_heh = 5):
    await ctx.send("he" * count_heh)

@bot.command()
async def toplama(ctx, s1=5 , s2=10):
    await ctx.send(s1 + s2)

@bot.command()
async def yazitura(ctx, tahmin):
    a = ["yazi" , "tura"]
    b = random.choice(a)
    if tahmin == b:
        await ctx.send("doğru tahmin")
    else:
        await ctx.send(f"yanlış tahmin , cevap {b}")


bot.run("MTIwNTU4MjE3MTM0NDA3NjkwMA.GKyrq7.iOW5VgY83aw9mtGN-emJOtpWDoNSluiYJtNPb8")
