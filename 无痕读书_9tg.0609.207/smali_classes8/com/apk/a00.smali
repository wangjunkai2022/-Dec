.class public final synthetic Lcom/apk/a00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/f00;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/f00;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/a00;->do:Lcom/apk/f00;

    iput-object p2, p0, Lcom/apk/a00;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/a00;->do:Lcom/apk/f00;

    iget-object v1, p0, Lcom/apk/a00;->if:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/f00;->private(Ljava/util/List;)V

    return-void
.end method
