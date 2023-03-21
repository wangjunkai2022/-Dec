.class public Lcom/apk/ep0;
.super Ljava/lang/Object;
.source "Collector.java"


# instance fields
.field public do:Lcom/apk/jo0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final for:Lcom/apk/hp0;

.field public if:Lcom/apk/jo0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/hp0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/ep0;->do:Lcom/apk/jo0;

    .line 3
    iput-object v0, p0, Lcom/apk/ep0;->if:Lcom/apk/jo0;

    .line 4
    iput-object p1, p0, Lcom/apk/ep0;->for:Lcom/apk/hp0;

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/jo0;Lcom/apk/jo0;)Lcom/apk/jo0;
    .locals 9
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/ep0;->do:Lcom/apk/jo0;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/apk/ep0;->if:Lcom/apk/jo0;

    .line 3
    sget-object p1, Lcom/apk/ip0;->new:Lcom/apk/ip0;

    sget-object v0, Lcom/apk/ip0;->if:Lcom/apk/ip0;

    sget-object v1, Lcom/apk/ip0;->try:Lcom/apk/ip0;

    sget-object v2, Lcom/apk/ip0;->do:Lcom/apk/ip0;

    const/4 v3, 0x0

    move-object v4, p2

    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_c

    .line 4
    instance-of v6, v4, Lcom/apk/jo0;

    if-eqz v6, :cond_0

    .line 5
    move-object v6, v4

    check-cast v6, Lcom/apk/jo0;

    .line 6
    iget-object v7, p0, Lcom/apk/ep0;->for:Lcom/apk/hp0;

    iget-object v8, p0, Lcom/apk/ep0;->do:Lcom/apk/jo0;

    invoke-virtual {v7, v8, v6}, Lcom/apk/hp0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7
    iput-object v6, p0, Lcom/apk/ep0;->if:Lcom/apk/jo0;

    move-object v6, v1

    goto :goto_1

    :cond_0
    move-object v6, v2

    :goto_1
    if-ne v6, v1, :cond_1

    goto :goto_4

    :cond_1
    if-ne v6, v2, :cond_2

    .line 8
    invoke-virtual {v4}, Lcom/apk/no0;->this()I

    move-result v7

    if-lez v7, :cond_2

    .line 9
    invoke-virtual {v4, v3}, Lcom/apk/no0;->goto(I)Lcom/apk/no0;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/apk/no0;->public()Lcom/apk/no0;

    move-result-object v7

    if-nez v7, :cond_7

    if-gtz v5, :cond_3

    goto :goto_3

    :cond_3
    if-eq v6, v2, :cond_4

    if-ne v6, v0, :cond_5

    :cond_4
    move-object v6, v2

    .line 11
    :cond_5
    iget-object v7, v4, Lcom/apk/no0;->do:Lcom/apk/no0;

    add-int/lit8 v5, v5, -0x1

    if-ne v6, p1, :cond_6

    .line 12
    invoke-virtual {v4}, Lcom/apk/no0;->finally()V

    :cond_6
    move-object v6, v2

    move-object v4, v7

    goto :goto_2

    :cond_7
    :goto_3
    if-eq v6, v2, :cond_8

    if-ne v6, v0, :cond_9

    :cond_8
    move-object v6, v2

    :cond_9
    if-ne v4, p2, :cond_a

    goto :goto_4

    .line 13
    :cond_a
    invoke-virtual {v4}, Lcom/apk/no0;->public()Lcom/apk/no0;

    move-result-object v7

    if-ne v6, p1, :cond_b

    .line 14
    invoke-virtual {v4}, Lcom/apk/no0;->finally()V

    :cond_b
    move-object v4, v7

    goto :goto_0

    .line 15
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/apk/ep0;->if:Lcom/apk/jo0;

    return-object p1
.end method
