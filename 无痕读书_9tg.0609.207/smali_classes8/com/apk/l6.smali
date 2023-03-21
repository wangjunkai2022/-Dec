.class public final synthetic Lcom/apk/l6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/b7;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/b7;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/l6;->do:Lcom/apk/b7;

    iput-object p2, p0, Lcom/apk/l6;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/l6;->do:Lcom/apk/b7;

    iget-object v1, p0, Lcom/apk/l6;->if:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/b7;->n(Ljava/util/List;)V

    return-void
.end method
