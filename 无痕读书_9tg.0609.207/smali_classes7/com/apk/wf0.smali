.class public interface abstract Lcom/apk/wf0;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# static fields
.field public static final do:Lcom/apk/wf0;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/vf0;

    invoke-direct {v0}, Lcom/apk/vf0;-><init>()V

    sput-object v0, Lcom/apk/wf0;->do:Lcom/apk/wf0;

    .line 2
    new-instance v0, Lcom/apk/lh0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/apk/lh0;-><init>(Lcom/apk/ng0;I)V

    return-void
.end method


# virtual methods
.method public abstract do(Lcom/apk/fh0;Lcom/apk/ch0;)Lcom/apk/zg0;
    .param p1    # Lcom/apk/fh0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ch0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
