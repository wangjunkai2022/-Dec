.class public Lcom/apk/qa0;
.super Lcom/apk/l80;
.source "SmartKeyboardManager.java"


# instance fields
.field public final synthetic if:Lcom/apk/za0;


# direct methods
.method public constructor <init>(Lcom/apk/za0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qa0;->if:Lcom/apk/za0;

    invoke-direct {p0}, Lcom/apk/l80;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/qa0;->if:Lcom/apk/za0;

    .line 2
    iget-object p1, p1, Lcom/apk/za0;->new:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/qa0;->if:Lcom/apk/za0;

    invoke-static {p1}, Lcom/apk/za0;->do(Lcom/apk/za0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/qa0;->if:Lcom/apk/za0;

    .line 6
    iget-object p1, p1, Lcom/apk/za0;->case:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/apk/qa0;->if:Lcom/apk/za0;

    invoke-static {p1}, Lcom/apk/za0;->if(Lcom/apk/za0;)V

    :cond_1
    :goto_0
    return-void
.end method
