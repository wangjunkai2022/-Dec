.class public final Lcom/apk/ck0;
.super Ljava/lang/Object;
.source "CloseGuard.kt"


# instance fields
.field public final do:Ljava/lang/reflect/Method;

.field public final for:Ljava/lang/reflect/Method;

.field public final if:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ck0;->do:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/apk/ck0;->if:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/apk/ck0;->for:Ljava/lang/reflect/Method;

    return-void
.end method
