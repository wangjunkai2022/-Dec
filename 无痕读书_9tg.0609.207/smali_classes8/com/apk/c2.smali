.class public final synthetic Lcom/apk/c2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h2;

.field public final synthetic for:I

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/h2;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/c2;->do:Lcom/apk/h2;

    iput-object p2, p0, Lcom/apk/c2;->if:Ljava/util/List;

    iput p3, p0, Lcom/apk/c2;->for:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/c2;->do:Lcom/apk/h2;

    iget-object v1, p0, Lcom/apk/c2;->if:Ljava/util/List;

    iget v2, p0, Lcom/apk/c2;->for:I

    invoke-virtual {v0, v1, v2}, Lcom/apk/h2;->synchronized(Ljava/util/List;I)V

    return-void
.end method
