.class public Lcom/baidu/tts/e/b;
.super Ljava/lang/Thread;
.source "StatThread.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/e/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/baidu/tts/e/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/e/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/tts/e/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/tts/e/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/baidu/tts/e/b;->a:Landroid/content/Context;

    return-void
.end method
