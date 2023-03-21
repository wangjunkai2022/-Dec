.class public abstract Lcom/apk/no0;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/no0$do;
    }
.end annotation


# static fields
.field public static final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/no0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public do:Lcom/apk/no0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/apk/no0;->for:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case()Lcom/apk/do0;
.end method

.method public catch()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apk/no0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->this()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/no0;->for:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public class()Lcom/apk/no0;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/no0;->const(Lcom/apk/no0;)Lcom/apk/no0;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/no0;

    .line 6
    invoke-virtual {v2}, Lcom/apk/no0;->this()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apk/no0;

    invoke-virtual {v6, v2}, Lcom/apk/no0;->const(Lcom/apk/no0;)Lcom/apk/no0;

    move-result-object v6

    .line 9
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->class()Lcom/apk/no0;

    move-result-object v0

    return-object v0
.end method

.method public const(Lcom/apk/no0;)Lcom/apk/no0;
    .locals 1
    .param p1    # Lcom/apk/no0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/no0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iput-object p1, v0, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/apk/no0;->if:I

    :goto_0
    iput p1, v0, Lcom/apk/no0;->if:I

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public default()Lcom/apk/no0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    return-object v0
.end method

.method public do(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->transient(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/no0;->import()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/apk/no0;->case()Lcom/apk/do0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/do0;->this(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/no0;->else()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/no0;->case()Lcom/apk/do0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/apk/do0;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apk/bo0;->class(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public abstract else()Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final extends(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->this()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/no0;

    .line 5
    iput p1, v1, Lcom/apk/no0;->if:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract final()Lcom/apk/no0;
.end method

.method public finally()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    invoke-static {v0}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    invoke-virtual {v0, p0}, Lcom/apk/no0;->package(Lcom/apk/no0;)V

    return-void
.end method

.method public goto(I)Lcom/apk/no0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/no0;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public varargs if(I[Lcom/apk/no0;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/apk/no0;->default()Lcom/apk/no0;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 5
    invoke-virtual {v2}, Lcom/apk/no0;->this()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_7

    .line 6
    invoke-virtual {v2}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v3

    .line 7
    array-length v4, p2

    :goto_0
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x1

    if-lez v4, :cond_2

    .line 8
    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    .line 9
    invoke-virtual {p0}, Lcom/apk/no0;->this()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 10
    :goto_2
    invoke-virtual {v2}, Lcom/apk/no0;->final()Lcom/apk/no0;

    .line 11
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 12
    array-length v0, p2

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    .line 13
    aget-object v0, p2, v2

    iput-object p0, v0, Lcom/apk/no0;->do:Lcom/apk/no0;

    move v0, v2

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    .line 14
    aget-object p2, p2, v1

    iget p2, p2, Lcom/apk/no0;->if:I

    if-eqz p2, :cond_6

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Lcom/apk/no0;->extends(I)V

    :cond_6
    return-void

    .line 16
    :cond_7
    array-length v2, p2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_9

    aget-object v4, p2, v3

    if-eqz v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 17
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array must not contain any null objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_9
    array-length v2, p2

    :goto_5
    if-ge v1, v2, :cond_c

    aget-object v3, p2, v1

    if-eqz v3, :cond_b

    .line 19
    invoke-static {p0}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 20
    iget-object v4, v3, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v4, :cond_a

    .line 21
    invoke-virtual {v4, v3}, Lcom/apk/no0;->package(Lcom/apk/no0;)V

    .line 22
    :cond_a
    iput-object p0, v3, Lcom/apk/no0;->do:Lcom/apk/no0;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    .line 23
    throw p1

    .line 24
    :cond_c
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 25
    invoke-virtual {p0, p1}, Lcom/apk/no0;->extends(I)V

    return-void
.end method

.method public abstract import()Z
.end method

.method public native(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    iget p3, p3, Lcom/apk/ho0$do;->else:I

    mul-int p2, p2, p3

    .line 3
    invoke-static {p2}, Lcom/apk/bo0;->break(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public new(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/no0;->import()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/no0;->case()Lcom/apk/do0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/do0;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "abs:"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/no0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public package(Lcom/apk/no0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/apk/sb0;->package(Z)V

    .line 2
    iget v0, p1, Lcom/apk/no0;->if:I

    .line 3
    invoke-virtual {p0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/no0;->extends(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/apk/no0;->do:Lcom/apk/no0;

    return-void
.end method

.method public private()Lcom/apk/no0;
    .locals 2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/apk/no0;->do:Lcom/apk/no0;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public public()Lcom/apk/no0;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/no0;->do:Lcom/apk/no0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/apk/no0;->super()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/apk/no0;->if:I

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/no0;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public abstract return()Ljava/lang/String;
.end method

.method public static()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/bo0;->if()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/apk/no0$do;

    invoke-static {p0}, Lcom/apk/sb0;->b(Lcom/apk/no0;)Lcom/apk/ho0$do;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/apk/no0$do;-><init>(Ljava/lang/Appendable;Lcom/apk/ho0$do;)V

    invoke-static {v1, p0}, Lcom/apk/jp0;->do(Lcom/apk/kp0;Lcom/apk/no0;)V

    .line 3
    invoke-static {v0}, Lcom/apk/bo0;->catch(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract super()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apk/no0;",
            ">;"
        }
    .end annotation
.end method

.method public abstract switch(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract this()I
.end method

.method public abstract throws(Ljava/lang/Appendable;ILcom/apk/ho0$do;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/no0;->static()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public while(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/no0;->import()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "abs:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/apk/no0;->case()Lcom/apk/do0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apk/do0;->this(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/apk/no0;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/apk/no0;->case()Lcom/apk/do0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/do0;->this(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
