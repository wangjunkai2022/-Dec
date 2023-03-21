.class public Lcom/apk/f60;
.super Lcom/apk/b60;
.source "TrRectangleAd.java"


# instance fields
.field public case:Lcom/apk/j60;

.field public final new:Landroid/app/Activity;

.field public final try:Lcom/apk/x60;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/x60;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/b60;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/f60;->new:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/f60;->try:Lcom/apk/x60;

    .line 4
    iput-object p3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public try(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/f60;->try:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->if(Lcom/apk/b70;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/k40;->extends()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/apk/f60;->try:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->for(Lcom/apk/b70;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/apk/f60;->new:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/apk/f60;->try:Lcom/apk/x60;

    invoke-virtual {p0, p1}, Lcom/apk/p70;->do(Lcom/apk/b70;)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/f60;->try:Lcom/apk/x60;

    invoke-virtual {p0, p3, p4, v0}, Lcom/apk/p70;->new(IILcom/apk/b70;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p3, Lcom/apk/j60;

    invoke-direct {p3}, Lcom/apk/j60;-><init>()V

    iput-object p3, p0, Lcom/apk/f60;->case:Lcom/apk/j60;

    .line 9
    iget p4, p0, Lcom/apk/b60;->if:I

    .line 10
    iput p4, p3, Lcom/apk/j60;->do:I

    .line 11
    iget p4, p0, Lcom/apk/b60;->for:I

    .line 12
    iput p4, p3, Lcom/apk/j60;->if:I

    .line 13
    iget-object p4, p0, Lcom/apk/f60;->new:Landroid/app/Activity;

    iget-object v0, p0, Lcom/apk/f60;->try:Lcom/apk/x60;

    .line 14
    invoke-static {p1}, Lcom/apk/k40;->finally(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p3, v0}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_0

    .line 16
    :cond_4
    new-instance p3, Lcom/apk/g70;

    invoke-direct {p3}, Lcom/apk/g70;-><init>()V

    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/apk/g70;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "gdt_native_page"

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {p3, v0}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result p3

    if-nez p3, :cond_6

    goto/16 :goto_0

    .line 19
    :cond_6
    new-instance p3, Lcom/apk/j70;

    invoke-direct {p3}, Lcom/apk/j70;-><init>()V

    .line 20
    invoke-virtual {p3, p1}, Lcom/apk/e70;->b(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/apk/x50;

    new-instance v2, Lcom/apk/j70$do;

    invoke-direct {v2, p3, p1, v0}, Lcom/apk/j70$do;-><init>(Lcom/apk/j70;Ljava/lang/String;Lcom/apk/x60;)V

    invoke-direct {v1, p4, v2}, Lcom/apk/x50;-><init>(Landroid/content/Context;Lcom/apk/x60;)V

    .line 22
    invoke-virtual {v1, p2}, Lcom/apk/t50;->do(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "gdt_native_rect"

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {p3, v0}, Lcom/apk/t60;->new(Lcom/apk/b70;)Z

    move-result p3

    if-nez p3, :cond_8

    goto/16 :goto_0

    .line 25
    :cond_8
    new-instance p3, Lcom/apk/i70;

    invoke-direct {p3}, Lcom/apk/i70;-><init>()V

    .line 26
    invoke-virtual {p3, p1}, Lcom/apk/e70;->b(Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/apk/y50;

    new-instance v2, Lcom/apk/i70$do;

    invoke-direct {v2, p3, p1, v0}, Lcom/apk/i70$do;-><init>(Lcom/apk/i70;Ljava/lang/String;Lcom/apk/x60;)V

    invoke-direct {v1, p4, v2}, Lcom/apk/y50;-><init>(Landroid/content/Context;Lcom/apk/x60;)V

    .line 28
    invoke-virtual {v1, p2}, Lcom/apk/t50;->do(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "csj"

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    invoke-virtual {p3, v0}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    .line 31
    :cond_a
    new-instance v1, Lcom/apk/f50;

    invoke-direct {v1}, Lcom/apk/f50;-><init>()V

    iget v2, p3, Lcom/apk/j60;->do:I

    .line 32
    iput v2, v1, Lcom/apk/k70;->try:I

    .line 33
    iget p3, p3, Lcom/apk/j60;->if:I

    .line 34
    iput p3, v1, Lcom/apk/k70;->case:I

    .line 35
    invoke-virtual {v1, p4, p1, p2, v0}, Lcom/apk/f70;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    goto :goto_0

    :cond_b
    const-string v1, "csjmb"

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 37
    invoke-virtual {p3, v0}, Lcom/apk/t60;->for(Lcom/apk/b70;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    .line 38
    :cond_c
    new-instance v1, Lcom/apk/f50;

    invoke-direct {v1}, Lcom/apk/f50;-><init>()V

    iget v2, p3, Lcom/apk/j60;->do:I

    .line 39
    iput v2, v1, Lcom/apk/k70;->try:I

    .line 40
    iget p3, p3, Lcom/apk/j60;->if:I

    .line 41
    iput p3, v1, Lcom/apk/k70;->case:I

    .line 42
    invoke-virtual {v1, p4, p1, p2, v0}, Lcom/apk/f70;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    goto :goto_0

    :cond_d
    const-string v1, "gm"

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 44
    invoke-virtual {p3, v0}, Lcom/apk/t60;->try(Lcom/apk/b70;)Z

    move-result p3

    if-nez p3, :cond_e

    goto :goto_0

    .line 45
    :cond_e
    new-instance p3, Lcom/apk/c80;

    invoke-direct {p3}, Lcom/apk/c80;-><init>()V

    invoke-virtual {p3, p4, p1, p2, v0}, Lcom/apk/c80;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V

    goto :goto_0

    :cond_f
    const-string p4, "swl"

    .line 46
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 47
    invoke-virtual {p3, p2, v0}, Lcom/apk/t60;->if(Ljava/lang/String;Lcom/apk/b70;)V

    goto :goto_0

    .line 48
    :cond_10
    invoke-virtual {p3, v0}, Lcom/apk/t60;->do(Lcom/apk/b70;)V

    :goto_0
    return-void
.end method
