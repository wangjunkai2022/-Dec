.class public final Lcom/apk/q2;
.super Ljava/lang/Object;
.source "NovelShelfModel.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic if:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q2;->do:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/apk/q2;->if:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/q2;->do:Landroid/content/Context;

    invoke-static {v0}, Lcom/apk/ze;->M(Landroid/content/Context;)V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/q2;->if:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/q2;->do:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
