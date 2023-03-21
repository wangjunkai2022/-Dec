.class public final synthetic Lcom/apk/j0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/r0;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/j0;->do:Lcom/apk/r0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/j0;->do:Lcom/apk/r0;

    invoke-virtual {v0}, Lcom/apk/r0;->super()V

    return-void
.end method
