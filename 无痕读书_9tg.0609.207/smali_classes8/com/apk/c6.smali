.class public final synthetic Lcom/apk/c6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h6;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/h6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/c6;->do:Lcom/apk/h6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/c6;->do:Lcom/apk/h6;

    invoke-virtual {v0}, Lcom/apk/h6;->k()V

    return-void
.end method
