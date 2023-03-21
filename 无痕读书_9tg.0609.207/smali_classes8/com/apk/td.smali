.class public final synthetic Lcom/apk/td;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/zd;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/zd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/td;->do:Lcom/apk/zd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/apk/td;->do:Lcom/apk/zd;

    invoke-virtual {v0}, Lcom/apk/zd;->new()V

    return-void
.end method
