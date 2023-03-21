.class public final synthetic Lcom/apk/vd;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/ae;

.field public final synthetic if:Lcom/apk/b6;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/ae;Lcom/apk/b6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/vd;->do:Lcom/apk/ae;

    iput-object p2, p0, Lcom/apk/vd;->if:Lcom/apk/b6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/vd;->do:Lcom/apk/ae;

    iget-object v1, p0, Lcom/apk/vd;->if:Lcom/apk/b6;

    invoke-virtual {v0, v1}, Lcom/apk/ae;->do(Lcom/apk/b6;)V

    return-void
.end method
