.class public final Lcom/apk/lj;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/lj$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final try:Lcom/apk/lj$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj$if<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/String;

.field public final if:Lcom/apk/lj$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj$if<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile new:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/lj$do;

    invoke-direct {v0}, Lcom/apk/lj$do;-><init>()V

    sput-object v0, Lcom/apk/lj;->try:Lcom/apk/lj$if;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/apk/lj$if;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/apk/lj$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/apk/lj$if<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/apk/lj;->for:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/apk/lj;->do:Ljava/lang/Object;

    const-string p1, "Argument must not be null"

    .line 5
    invoke-static {p3, p1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/apk/lj;->if:Lcom/apk/lj$if;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/apk/lj<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/lj;

    .line 2
    sget-object v1, Lcom/apk/lj;->try:Lcom/apk/lj$if;

    .line 3
    invoke-direct {v0, p0, p1, v1}, Lcom/apk/lj;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/apk/lj$if;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/apk/lj;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/apk/lj;

    .line 3
    iget-object v0, p0, Lcom/apk/lj;->for:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/lj;->for:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/lj;->for:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Option{key=\'"

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/lj;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/lj;->if:Lcom/apk/lj$if;

    .line 2
    iget-object v1, p0, Lcom/apk/lj;->new:[B

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/lj;->for:Ljava/lang/String;

    sget-object v2, Lcom/apk/kj;->do:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/apk/lj;->new:[B

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/apk/lj;->new:[B

    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcom/apk/lj$if;->update([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method
