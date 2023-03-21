.class public final Lcom/apk/wj$if;
.super Ljava/lang/Object;
.source "DataRewinderRegistry.java"

# interfaces
.implements Lcom/apk/vj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/wj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/vj<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/wj$if;->do:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/wj$if;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public if()V
    .locals 0

    return-void
.end method
