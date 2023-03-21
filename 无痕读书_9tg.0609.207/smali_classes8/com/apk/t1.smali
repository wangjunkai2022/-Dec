.class public final synthetic Lcom/apk/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h2$for;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/h2$for;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/t1;->do:Lcom/apk/h2$for;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/t1;->do:Lcom/apk/h2$for;

    invoke-virtual {v0}, Lcom/apk/h2$for;->new()V

    return-void
.end method
