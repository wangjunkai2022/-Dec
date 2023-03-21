.class public final synthetic Lcom/apk/m6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/j7$do;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/j7$do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/m6;->do:Lcom/apk/j7$do;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/m6;->do:Lcom/apk/j7$do;

    invoke-virtual {v0}, Lcom/apk/j7$do;->do()V

    return-void
.end method
