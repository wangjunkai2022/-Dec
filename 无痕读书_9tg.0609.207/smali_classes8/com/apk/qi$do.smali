.class public Lcom/apk/qi$do;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/qi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/qi;


# direct methods
.method public constructor <init>(Lcom/apk/qi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qi$do;->do:Lcom/apk/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/qi$do;->do:Lcom/apk/qi;

    iget-object v1, v0, Lcom/apk/qi;->for:Lcom/apk/dq;

    invoke-interface {v1, v0}, Lcom/apk/dq;->do(Lcom/apk/eq;)V

    return-void
.end method
