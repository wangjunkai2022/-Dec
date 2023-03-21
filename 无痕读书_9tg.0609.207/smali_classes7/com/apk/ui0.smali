.class public final Lcom/apk/ui0;
.super Ljava/lang/Object;
.source "Header.kt"


# static fields
.field public static final case:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final else:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final goto:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final new:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final this:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final try:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final do:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final for:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final if:Lcom/apk/uk0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ui0;->new:Lcom/apk/uk0;

    .line 2
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, ":status"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ui0;->try:Lcom/apk/uk0;

    .line 3
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, ":method"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ui0;->case:Lcom/apk/uk0;

    .line 4
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, ":path"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ui0;->else:Lcom/apk/uk0;

    .line 5
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, ":scheme"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ui0;->goto:Lcom/apk/uk0;

    .line 6
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    const-string v1, ":authority"

    invoke-virtual {v0, v1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object v0

    sput-object v0, Lcom/apk/ui0;->this:Lcom/apk/uk0;

    return-void
.end method

.method public constructor <init>(Lcom/apk/uk0;Lcom/apk/uk0;)V
    .locals 1
    .param p1    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    iput-object p2, p0, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    .line 2
    invoke-virtual {p1}, Lcom/apk/uk0;->for()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    .line 3
    iget-object p2, p0, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    .line 4
    invoke-virtual {p2}, Lcom/apk/uk0;->for()I

    move-result p2

    add-int/2addr p1, p2

    .line 5
    iput p1, p0, Lcom/apk/ui0;->do:I

    return-void
.end method

.method public constructor <init>(Lcom/apk/uk0;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/apk/uk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    invoke-virtual {v0, p2}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Lcom/apk/uk0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    invoke-virtual {v0, p1}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object p1

    sget-object v0, Lcom/apk/uk0;->try:Lcom/apk/uk0$do;

    invoke-virtual {v0, p2}, Lcom/apk/uk0$do;->if(Ljava/lang/String;)Lcom/apk/uk0;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apk/ui0;-><init>(Lcom/apk/uk0;Lcom/apk/uk0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/apk/ui0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/ui0;

    iget-object v0, p0, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    iget-object v1, p1, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    invoke-static {v0, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    iget-object p1, p1, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    invoke-static {v0, p1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apk/uk0;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/apk/uk0;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/ui0;->if:Lcom/apk/uk0;

    invoke-virtual {v1}, Lcom/apk/uk0;->break()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ui0;->for:Lcom/apk/uk0;

    invoke-virtual {v1}, Lcom/apk/uk0;->break()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
