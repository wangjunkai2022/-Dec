.class public Lcom/apk/dn$new;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/apk/zm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/zm<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/dn$new;->do:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 0

    return-void
.end method

.method public for(Lcom/apk/cn;)Lcom/apk/ym;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/cn;",
            ")",
            "Lcom/apk/ym<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/apk/dn;

    iget-object v0, p0, Lcom/apk/dn$new;->do:Landroid/content/res/Resources;

    .line 2
    sget-object v1, Lcom/apk/gn;->do:Lcom/apk/gn;

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/apk/dn;-><init>(Landroid/content/res/Resources;Lcom/apk/ym;)V

    return-object p1
.end method
