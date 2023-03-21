.class public final synthetic Lcom/apk/x1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h2;

.field public final synthetic if:I


# direct methods
.method public synthetic constructor <init>(Lcom/apk/h2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/x1;->do:Lcom/apk/h2;

    iput p2, p0, Lcom/apk/x1;->if:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/x1;->do:Lcom/apk/h2;

    iget v1, p0, Lcom/apk/x1;->if:I

    invoke-virtual {v0, v1}, Lcom/apk/h2;->e(I)V

    return-void
.end method
