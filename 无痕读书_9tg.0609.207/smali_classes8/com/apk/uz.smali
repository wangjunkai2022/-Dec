.class public final synthetic Lcom/apk/uz;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00$new;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/f00$new;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/uz;->do:Lcom/apk/f00$new;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/uz;->do:Lcom/apk/f00$new;

    invoke-virtual {v0}, Lcom/apk/f00$new;->case()V

    return-void
.end method
