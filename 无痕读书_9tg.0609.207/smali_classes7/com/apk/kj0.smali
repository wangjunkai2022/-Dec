.class public interface abstract Lcom/apk/kj0;
.super Ljava/lang/Object;
.source "PushObserver.kt"


# static fields
.field public static final do:Lcom/apk/kj0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/jj0;

    invoke-direct {v0}, Lcom/apk/jj0;-><init>()V

    sput-object v0, Lcom/apk/kj0;->do:Lcom/apk/kj0;

    return-void
.end method


# virtual methods
.method public abstract do(ILjava/util/List;)Z
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract for(ILcom/apk/ti0;)V
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract if(ILjava/util/List;Z)Z
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract new(ILcom/apk/tk0;IZ)Z
    .param p2    # Lcom/apk/tk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
