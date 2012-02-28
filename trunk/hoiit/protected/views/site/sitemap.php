<?php echo '<?xml version="1.0" encoding="UTF-8"?>' ?>

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
    <url>
        <loc>http://hoiit.com</loc>
        <changefreq>daily</changefreq>
        <priority>1.00</priority>
    </url>
    <url>
        <loc>http://hoiit.com/register</loc>
        <changefreq>daily</changefreq>
        <priority>0.9</priority>
    </url>
    <url>
        <loc>http://hoiit.com/login</loc>
        <changefreq>daily</changefreq>
        <priority>0.9</priority>
    </url>
    <url>
        <loc>http://hoiit.com/posts</loc>
        <changefreq>daily</changefreq>
        <priority>0.9</priority>
    </url>
<?php foreach ($cats as $model): ?>
    <url>
        <loc><?php echo CHtml::encode($this->createAbsoluteUrl('post/view', array('slug' => $model->cat_id))); ?></loc>
        <changefreq>daily</changefreq>
        <priority>0.5</priority>
    </url>
<?php endforeach; ?>

<?php foreach ($posts as $model): ?>
    <url>
        <loc><?php echo CHtml::encode($this->createAbsoluteUrl('page/view', array('slug' => $model->post_id))); ?></loc>
        <changefreq>daily</changefreq>
        <priority>0.5</priority>
    </url>
<?php endforeach; ?>
</urlset>