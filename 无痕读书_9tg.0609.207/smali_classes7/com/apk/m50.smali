.class public Lcom/apk/m50;
.super Ljava/lang/Object;
.source "CsjProviderSplash.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/l50;

.field public final synthetic if:Lcom/apk/a70;


# direct methods
.method public constructor <init>(Lcom/apk/l50;Ljava/lang/String;Lcom/apk/a70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/m50;->for:Lcom/apk/l50;

    iput-object p2, p0, Lcom/apk/m50;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/m50;->if:Lcom/apk/a70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/apk/m50;->for:Lcom/apk/l50;

    .line 2
    iget-object p1, p1, Lcom/apk/l50;->case:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    iget-object p1, p0, Lcom/apk/m50;->for:Lcom/apk/l50;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/apk/l50;->case:Landroid/os/CountDownTimer;

    .line 6
    iget-object v0, p0, Lcom/apk/m50;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/m50;->if:Lcom/apk/a70;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/apk/e70;->native(Ljava/lang/String;Lcom/apk/a70;)V

    :cond_0
    return-void
.end method
