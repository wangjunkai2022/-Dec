.class public final synthetic Lcom/apk/w2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/q5;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/q5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/w2;->do:Lcom/apk/q5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/w2;->do:Lcom/apk/q5;

    invoke-virtual {v0}, Lcom/apk/q5;->try()V

    return-void
.end method
