.class public Lcom/baidu/tts/m/j;
.super Lcom/baidu/tts/n/a;
.source "TtsParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/tts/n/a<",
        "Lcom/baidu/tts/m/j;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/baidu/tts/m/b;

.field public b:Lcom/baidu/tts/m/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/baidu/tts/n/a;-><init>()V

    .line 2
    new-instance v0, Lcom/baidu/tts/m/b;

    invoke-direct {v0}, Lcom/baidu/tts/m/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    .line 3
    new-instance v0, Lcom/baidu/tts/m/a;

    invoke-direct {v0}, Lcom/baidu/tts/m/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    return-void
.end method

.method private b(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v1}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    invoke-virtual {v2}, Lcom/baidu/tts/m/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v2

    .line 5
    sget-object v3, Lcom/baidu/tts/m/j$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 6
    :pswitch_0
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->n(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->o(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->i(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 9
    :pswitch_3
    :try_start_0
    invoke-static {p2}, Lcom/baidu/tts/f/l;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object p1, Lcom/baidu/tts/f/l;->d:Lcom/baidu/tts/f/l;

    .line 11
    :goto_0
    iget-object p2, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/m/b;->a(Lcom/baidu/tts/f/l;)V

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->m(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 13
    :pswitch_5
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 14
    :pswitch_6
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15
    :pswitch_7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 16
    invoke-virtual {v1, p1}, Lcom/baidu/tts/b/a/b/f$b;->a(I)V

    goto/16 :goto_2

    .line 17
    :pswitch_8
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18
    :pswitch_9
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :pswitch_a
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 20
    :pswitch_b
    :try_start_1
    invoke-static {p2}, Lcom/baidu/tts/f/j;->valueOf(Ljava/lang/String;)Lcom/baidu/tts/f/j;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 21
    :catch_1
    sget-object p1, Lcom/baidu/tts/f/j;->a:Lcom/baidu/tts/f/j;

    .line 22
    :goto_1
    iget-object p2, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/m/b;->a(Lcom/baidu/tts/f/j;)V

    goto/16 :goto_2

    .line 23
    :pswitch_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 24
    iget-object p2, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/m/a;->a(I)V

    goto/16 :goto_2

    .line 25
    :pswitch_d
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :pswitch_e
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 27
    :pswitch_f
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->a(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 28
    :pswitch_10
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->k(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 29
    :pswitch_11
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->i(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 30
    :pswitch_12
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->h(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 31
    :pswitch_13
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->l(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :pswitch_14
    iget-object p1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/m/b;->d(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 33
    :pswitch_15
    invoke-virtual {v1, p2}, Lcom/baidu/tts/m/d;->p(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/baidu/tts/m/d;->p(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :pswitch_16
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->c(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 36
    :pswitch_17
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->j(Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :pswitch_18
    invoke-static {p2}, Lcom/baidu/tts/f/c;->a(Ljava/lang/String;)Lcom/baidu/tts/f/c;

    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/f/c;)V

    goto :goto_2

    .line 39
    :pswitch_19
    invoke-static {p2}, Lcom/baidu/tts/f/b;->a(Ljava/lang/String;)Lcom/baidu/tts/f/b;

    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lcom/baidu/tts/b/a/b/f$b;->a(Lcom/baidu/tts/f/b;)I

    move-result p1

    return p1

    .line 41
    :pswitch_1a
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->g(Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :pswitch_1b
    invoke-virtual {v1, p2}, Lcom/baidu/tts/b/a/b/f$b;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 43
    :pswitch_1c
    invoke-virtual {v2, p2}, Lcom/baidu/tts/m/c;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 44
    :pswitch_1d
    invoke-static {p2}, Lcom/baidu/tts/f/d;->a(Ljava/lang/String;)Lcom/baidu/tts/f/d;

    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/baidu/tts/m/d;->a(Lcom/baidu/tts/f/d;)V

    goto :goto_2

    .line 46
    :pswitch_1e
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->g(Ljava/lang/String;)V

    goto :goto_2

    .line 47
    :pswitch_1f
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->f(Ljava/lang/String;)V

    goto :goto_2

    .line 48
    :pswitch_20
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_21
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/a/b/e$a;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :pswitch_22
    iget-object p1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/m/b;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 51
    :pswitch_23
    iget-object p1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/m/b;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :pswitch_24
    iget-object p1, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {p1, p2}, Lcom/baidu/tts/m/b;->a(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/baidu/tts/f/g;Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/baidu/tts/m/j;->b(Lcom/baidu/tts/f/g;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Lcom/baidu/tts/m/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    return-object v0
.end method

.method public b()Lcom/baidu/tts/m/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    return-object v0
.end method

.method public c()Lcom/baidu/tts/b/a/b/f$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/baidu/tts/b/a/b/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/j;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->b()Lcom/baidu/tts/b/a/b/e$a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/baidu/tts/b/b/b/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/m/j;->b:Lcom/baidu/tts/m/a;

    invoke-virtual {v0}, Lcom/baidu/tts/m/a;->a()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    return-object v0
.end method
