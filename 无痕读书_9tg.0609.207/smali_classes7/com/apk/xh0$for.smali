.class public final Lcom/apk/xh0$for;
.super Lcom/apk/ok0;
.source "RealCall.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/xh0;-><init>(Lcom/apk/xg0;Lcom/apk/zg0;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic class:Lcom/apk/xh0;


# direct methods
.method public constructor <init>(Lcom/apk/xh0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/xh0$for;->class:Lcom/apk/xh0;

    invoke-direct {p0}, Lcom/apk/ok0;-><init>()V

    return-void
.end method


# virtual methods
.method public catch()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xh0$for;->class:Lcom/apk/xh0;

    invoke-virtual {v0}, Lcom/apk/xh0;->cancel()V

    return-void
.end method
