.class public final synthetic Lcom/apk/this;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/class$do;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/class$do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/this;->do:Lcom/apk/class$do;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/this;->do:Lcom/apk/class$do;

    invoke-virtual {v0}, Lcom/apk/class$do;->do()V

    return-void
.end method
