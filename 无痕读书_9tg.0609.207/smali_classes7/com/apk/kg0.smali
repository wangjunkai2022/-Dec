.class public interface abstract Lcom/apk/kg0;
.super Ljava/lang/Object;
.source "CookieJar.kt"


# static fields
.field public static final do:Lcom/apk/kg0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/jg0;

    invoke-direct {v0}, Lcom/apk/jg0;-><init>()V

    sput-object v0, Lcom/apk/kg0;->do:Lcom/apk/kg0;

    return-void
.end method


# virtual methods
.method public abstract do(Lcom/apk/tg0;Ljava/util/List;)V
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            "Ljava/util/List<",
            "Lcom/apk/ig0;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract if(Lcom/apk/tg0;)Ljava/util/List;
    .param p1    # Lcom/apk/tg0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/tg0;",
            ")",
            "Ljava/util/List<",
            "Lcom/apk/ig0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
