.class public final synthetic Lcom/apk/b00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/f00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/b00;->do:Lcom/apk/f00;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/b00;->do:Lcom/apk/f00;

    invoke-virtual {v0}, Lcom/apk/f00;->strictfp()V

    return-void
.end method
