.class public final synthetic Lcom/apk/e2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h2;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/apk/h2;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/e2;->do:Lcom/apk/h2;

    iput p2, p0, Lcom/apk/e2;->if:I

    iput-object p3, p0, Lcom/apk/e2;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/e2;->do:Lcom/apk/h2;

    iget v1, p0, Lcom/apk/e2;->if:I

    iget-object v2, p0, Lcom/apk/e2;->for:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/apk/h2;->f(ILjava/util/List;)V

    return-void
.end method
