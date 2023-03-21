.class public final synthetic Lcom/apk/u8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/g9;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/g9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/u8;->do:Lcom/apk/g9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/u8;->do:Lcom/apk/g9;

    invoke-virtual {v0}, Lcom/apk/g9;->do()V

    return-void
.end method
