.class public Lcom/apk/mm$for;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lcom/apk/uj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/mm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/uj<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final do:[B

.field public final if:Lcom/apk/mm$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/mm$if<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLcom/apk/mm$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/apk/mm$if<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/mm$for;->do:[B

    .line 3
    iput-object p2, p0, Lcom/apk/mm$for;->if:Lcom/apk/mm$if;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public case(Lcom/apk/ni;Lcom/apk/uj$do;)V
    .locals 1
    .param p1    # Lcom/apk/ni;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/uj$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ni;",
            "Lcom/apk/uj$do<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/mm$for;->if:Lcom/apk/mm$if;

    iget-object v0, p0, Lcom/apk/mm$for;->do:[B

    invoke-interface {p1, v0}, Lcom/apk/mm$if;->if([B)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-interface {p2, p1}, Lcom/apk/uj$do;->new(Ljava/lang/Object;)V

    return-void
.end method

.method public do()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/mm$for;->if:Lcom/apk/mm$if;

    invoke-interface {v0}, Lcom/apk/mm$if;->do()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public if()V
    .locals 0

    return-void
.end method

.method public try()Lcom/apk/dj;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/dj;->do:Lcom/apk/dj;

    return-object v0
.end method
