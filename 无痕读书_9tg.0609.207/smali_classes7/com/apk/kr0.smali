.class public Lcom/apk/kr0;
.super Ljava/lang/Object;
.source "SkinPreference.java"


# static fields
.field public static new:Lcom/apk/kr0;


# instance fields
.field public final do:Landroid/content/Context;

.field public final for:Landroid/content/SharedPreferences$Editor;

.field public final if:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/kr0;->do:Landroid/content/Context;

    const-string v0, "meta-data"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/kr0;->if:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/kr0;->for:Landroid/content/SharedPreferences$Editor;

    return-void
.end method
