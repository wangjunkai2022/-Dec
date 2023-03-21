.class public abstract Lcom/apk/bh0;
.super Ljava/lang/Object;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/bh0$do;
    }
.end annotation


# static fields
.field public static final do:Lcom/apk/bh0$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/bh0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/bh0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/bh0;->do:Lcom/apk/bh0$do;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract for(Lcom/apk/sk0;)V
    .param p1    # Lcom/apk/sk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract if()Lcom/apk/vg0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
