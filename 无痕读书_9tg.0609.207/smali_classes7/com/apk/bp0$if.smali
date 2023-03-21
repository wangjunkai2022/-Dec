.class public final enum Lcom/apk/bp0$if;
.super Lcom/apk/bp0;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/bp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/bp0;-><init>(Ljava/lang/String;ILcom/apk/bp0$catch;)V

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/ap0;Lcom/apk/qo0;)V
    .locals 6

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->return(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 3
    sget-object p2, Lcom/apk/bp0;->class:Lcom/apk/bp0;

    .line 4
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->switch()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7
    iget-object v0, p1, Lcom/apk/ap0;->super:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p1, Lcom/apk/ap0;->throw:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "</"

    .line 9
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/apk/ap0;->super:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/apk/ap0;->throw:Ljava/lang/String;

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/apk/ap0;->throw:Ljava/lang/String;

    .line 11
    iget-object v1, p2, Lcom/apk/qo0;->class:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 12
    iget v1, p2, Lcom/apk/qo0;->const:I

    if-ne v1, v2, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 13
    :cond_2
    iget v5, p2, Lcom/apk/qo0;->try:I

    if-lt v1, v5, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iput-object v0, p2, Lcom/apk/qo0;->class:Ljava/lang/String;

    .line 15
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p2, v1}, Lcom/apk/qo0;->default(Ljava/lang/CharSequence;)I

    move-result v1

    if-le v1, v2, :cond_4

    .line 17
    iget v0, p2, Lcom/apk/qo0;->try:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/apk/qo0;->const:I

    goto :goto_1

    .line 18
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->default(Ljava/lang/CharSequence;)I

    move-result v0

    if-le v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    .line 20
    iget v1, p2, Lcom/apk/qo0;->try:I

    add-int v2, v1, v0

    :cond_6
    iput v2, p2, Lcom/apk/qo0;->const:I

    :goto_1
    if-nez v3, :cond_7

    .line 21
    invoke-virtual {p1, v4}, Lcom/apk/ap0;->new(Z)Lcom/apk/yo0$this;

    move-result-object p2

    .line 22
    iget-object v0, p1, Lcom/apk/ap0;->super:Ljava/lang/String;

    .line 23
    invoke-virtual {p2, v0}, Lcom/apk/yo0$this;->native(Ljava/lang/String;)Lcom/apk/yo0$this;

    iput-object p2, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    .line 24
    invoke-virtual {p1}, Lcom/apk/ap0;->this()V

    .line 25
    sget-object p2, Lcom/apk/bp0;->goto:Lcom/apk/bp0;

    .line 26
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_2

    :cond_7
    const-string p2, "<"

    .line 27
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 28
    sget-object p2, Lcom/apk/bp0;->for:Lcom/apk/bp0;

    .line 29
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_2
    return-void
.end method
