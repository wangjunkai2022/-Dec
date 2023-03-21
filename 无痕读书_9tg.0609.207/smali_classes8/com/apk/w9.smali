.class public final synthetic Lcom/apk/w9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/y9;

.field public final synthetic if:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/apk/y9;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/w9;->do:Lcom/apk/y9;

    iput-object p2, p0, Lcom/apk/w9;->if:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/w9;->do:Lcom/apk/y9;

    iget-object v1, p0, Lcom/apk/w9;->if:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/apk/y9;->do(Landroid/view/ViewGroup;)V

    return-void
.end method
