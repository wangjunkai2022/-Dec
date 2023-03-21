.class public Lcom/apk/zg0$do;
.super Ljava/lang/Object;
.source "Request.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/zg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:Lcom/apk/tg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public for:Lcom/apk/sg0$do;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public if:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public new:Lcom/apk/bh0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lcom/apk/zg0$do;->if:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/apk/sg0$do;

    invoke-direct {v0}, Lcom/apk/sg0$do;-><init>()V

    iput-object v0, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    return-void
.end method

.method public constructor <init>(Lcom/apk/zg0;)V
    .locals 2
    .param p1    # Lcom/apk/zg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "request"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Lcom/apk/zg0;->if:Lcom/apk/tg0;

    .line 8
    iput-object v0, p0, Lcom/apk/zg0$do;->do:Lcom/apk/tg0;

    .line 9
    iget-object v0, p1, Lcom/apk/zg0;->for:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/apk/zg0$do;->if:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/apk/zg0;->try:Lcom/apk/bh0;

    .line 12
    iput-object v0, p0, Lcom/apk/zg0$do;->new:Lcom/apk/bh0;

    .line 13
    iget-object v0, p1, Lcom/apk/zg0;->case:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lcom/apk/zg0;->case:Ljava/util/Map;

    const-string v1, "$this$toMutableMap"

    .line 17
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 19
    :goto_0
    iput-object v0, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    .line 20
    iget-object p1, p1, Lcom/apk/zg0;->new:Lcom/apk/sg0;

    .line 21
    invoke-virtual {p1}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)Lcom/apk/zg0$do;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    invoke-virtual {v0, p1}, Lcom/apk/sg0$do;->try(Ljava/lang/String;)Lcom/apk/sg0$do;

    return-object p0
.end method

.method public final delete()Lcom/apk/zg0$do;
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/jh0;->new:Lcom/apk/bh0;

    invoke-virtual {p0, v0}, Lcom/apk/zg0$do;->delete(Lcom/apk/bh0;)Lcom/apk/zg0$do;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/apk/bh0;)Lcom/apk/zg0$do;
    .locals 1
    .param p1    # Lcom/apk/bh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "DELETE"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/apk/zg0$do;->try(Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/zg0$do;

    return-object p0
.end method

.method public do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    invoke-virtual {v0, p1, p2}, Lcom/apk/sg0$do;->do(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/sg0$do;

    return-object p0
.end method

.method public else(Ljava/lang/Object;)Lcom/apk/zg0$do;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "type"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public for(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/zg0$do;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    invoke-virtual {v0, p1, p2}, Lcom/apk/sg0$do;->case(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/sg0$do;

    return-object p0
.end method

.method public goto(Ljava/lang/String;)Lcom/apk/zg0$do;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ws:"

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Lcom/apk/ie0;->public(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    if-eqz v0, :cond_0

    const-string v0, "http:"

    .line 2
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "wss:"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/apk/ie0;->public(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https:"

    .line 4
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    const-string v0, "$this$toHttpUrl"

    .line 5
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/apk/tg0$do;

    invoke-direct {v0}, Lcom/apk/tg0$do;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/apk/tg0$do;->new(Lcom/apk/tg0;Ljava/lang/String;)Lcom/apk/tg0$do;

    invoke-virtual {v0}, Lcom/apk/tg0$do;->do()Lcom/apk/tg0;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/apk/zg0$do;->this(Lcom/apk/tg0;)Lcom/apk/zg0$do;

    return-object p0
.end method

.method public if()Lcom/apk/zg0;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/apk/zg0$do;->do:Lcom/apk/tg0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/apk/zg0$do;->if:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    invoke-virtual {v0}, Lcom/apk/sg0$do;->new()Lcom/apk/sg0;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/apk/zg0$do;->new:Lcom/apk/bh0;

    .line 5
    iget-object v0, p0, Lcom/apk/zg0$do;->try:Ljava/util/Map;

    invoke-static {v0}, Lcom/apk/jh0;->strictfp(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 6
    new-instance v6, Lcom/apk/zg0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/apk/zg0;-><init>(Lcom/apk/tg0;Ljava/lang/String;Lcom/apk/sg0;Lcom/apk/bh0;Ljava/util/Map;)V

    return-object v6

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new(Lcom/apk/sg0;)Lcom/apk/zg0$do;
    .locals 1
    .param p1    # Lcom/apk/sg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/apk/sg0;->for()Lcom/apk/sg0$do;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/zg0$do;->for:Lcom/apk/sg0$do;

    return-object p0
.end method

.method public this(Lcom/apk/tg0;)Lcom/apk/zg0$do;
    .locals 1
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/apk/zg0$do;->do:Lcom/apk/tg0;

    return-object p0
.end method

.method public try(Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/zg0$do;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/bh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    const-string v1, "method "

    if-nez p2, :cond_4

    .line 2
    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 3
    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PROPPATCH"

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REPORT"

    invoke-static {p1, v0}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, " must have a request body."

    .line 4
    invoke-static {v1, p1, p2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_4
    invoke-static {p1}, Lcom/apk/li0;->do(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    :goto_1
    iput-object p1, p0, Lcom/apk/zg0$do;->if:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/apk/zg0$do;->new:Lcom/apk/bh0;

    return-object p0

    :cond_5
    const-string p2, " must not have a request body."

    .line 9
    invoke-static {v1, p1, p2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.isEmpty() == true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
