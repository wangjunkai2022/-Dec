.class public Lcom/apk/ss$do;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ss;


# direct methods
.method public constructor <init>(Lcom/apk/ss;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ss$do;->do:Lcom/apk/ss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ss$do;->do:Lcom/apk/ss;

    invoke-static {v0}, Lcom/apk/ss;->do(Lcom/apk/ss;)V

    return-void
.end method
