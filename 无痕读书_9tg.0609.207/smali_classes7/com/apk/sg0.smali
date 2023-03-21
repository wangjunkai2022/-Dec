.class public final Lcom/apk/sg0;
.super Ljava/lang/Object;
.source "Headers.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/apk/ud0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/sg0$do;,
        Lcom/apk/sg0$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/apk/jc0<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/apk/ud0;"
    }
.end annotation


# static fields
.field public static final if:Lcom/apk/sg0$if;


# instance fields
.field public final do:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/sg0$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/sg0$if;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/sg0;->if:Lcom/apk/sg0$if;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final do(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    array-length v2, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/apk/yd0;->do(II)Lcom/apk/vd0;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/apk/yd0;->if(Lcom/apk/vd0;I)Lcom/apk/vd0;

    move-result-object v2

    .line 3
    iget v3, v2, Lcom/apk/vd0;->do:I

    .line 4
    iget v4, v2, Lcom/apk/vd0;->if:I

    .line 5
    iget v2, v2, Lcom/apk/vd0;->for:I

    if-ltz v2, :cond_0

    if-gt v3, v4, :cond_2

    goto :goto_0

    :cond_0
    if-lt v3, v4, :cond_2

    .line 6
    :goto_0
    aget-object v5, v0, v3

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/2addr v3, v6

    .line 7
    aget-object v1, v0, v3

    goto :goto_1

    :cond_1
    if-eq v3, v4, :cond_2

    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/apk/sg0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    check-cast p1, Lcom/apk/sg0;

    iget-object p1, p1, Lcom/apk/sg0;->do:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final for()Lcom/apk/sg0$do;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/sg0$do;

    invoke-direct {v0}, Lcom/apk/sg0$do;-><init>()V

    .line 2
    iget-object v1, v0, Lcom/apk/sg0$do;->do:Ljava/util/List;

    .line 3
    iget-object v2, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    const-string v3, "$this$addAll"

    .line 4
    invoke-static {v1, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "elements"

    invoke-static {v2, v3}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Lcom/apk/uc0;->do([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final if(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/apk/jc0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/sg0;->size()I

    move-result v0

    new-array v1, v0, [Lcom/apk/jc0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v5, Lcom/apk/jc0;

    invoke-direct {v5, v3, v4}, Lcom/apk/jc0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "array"

    .line 4
    invoke-static {v1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/apk/kd0;

    invoke-direct {v0, v1}, Lcom/apk/kd0;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final new(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/sg0;->do:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/sg0;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v3}, Lcom/apk/jh0;->switch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "\u2588\u2588"

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final try(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/apk/sg0;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Lcom/apk/sg0;->if(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/apk/ie0;->new(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lcom/apk/sg0;->new(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "Collections.unmodifiableList(result)"

    invoke-static {p1, v0}, Lcom/apk/nd0;->for(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_3
    sget-object p1, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    :goto_1
    return-object p1
.end method
