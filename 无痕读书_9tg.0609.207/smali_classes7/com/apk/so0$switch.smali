.class public final enum Lcom/apk/so0$switch;
.super Lcom/apk/so0;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/so0;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/so0;-><init>(Ljava/lang/String;ILcom/apk/so0$catch;)V

    return-void
.end method


# virtual methods
.method public for(Lcom/apk/yo0;Lcom/apk/ro0;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/apk/yo0;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/yo0$for;

    .line 3
    invoke-virtual {p2, p1}, Lcom/apk/ro0;->insert(Lcom/apk/yo0$for;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/apk/yo0;->new()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2, p0}, Lcom/apk/ro0;->super(Lcom/apk/so0;)V

    .line 6
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 7
    iget-object v0, p2, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 8
    iput-object v0, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    .line 9
    iput-object p1, p2, Lcom/apk/cp0;->else:Lcom/apk/yo0;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/apk/so0;->for(Lcom/apk/yo0;Lcom/apk/ro0;)Z

    move-result p1

    return p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/apk/yo0;->try()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p2}, Lcom/apk/ro0;->volatile()Lcom/apk/jo0;

    .line 13
    iget-object p1, p2, Lcom/apk/ro0;->const:Lcom/apk/so0;

    .line 14
    iput-object p1, p2, Lcom/apk/ro0;->class:Lcom/apk/so0;

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
